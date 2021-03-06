option(WITH_GSSAPI "Build with GSSAPI support" ON)
option(WITH_ZLIB "Build with ZLIB support" ON)
option(WITH_SFTP "Build with SFTP support" ON)
option(WITH_SERVER "Build with SSH server support" ON)
option(WITH_STATIC_LIB "Build with a static library" OFF)
option(WITH_DEBUG_CRYPTO "Build with cryto debug output" OFF)
option(WITH_DEBUG_PACKET "Build with packet debug output" OFF)
option(WITH_DEBUG_CALLTRACE "Build with calltrace debug output" ON)
option(WITH_GCRYPT "Compile against libgcrypt" OFF)
option(WITH_MBEDTLS "Compile against libmbedtls" OFF)
option(WITH_PCAP "Compile with Pcap generation support" ON)
option(WITH_INTERNAL_DOC "Compile doxygen internal documentation" OFF)
option(UNIT_TESTING "Build with unit tests" OFF)
option(CLIENT_TESTING "Build with client tests; requires openssh" OFF)
option(SERVER_TESTING "Build with server tests; requires openssh and dropbear" OFF)
option(WITH_BENCHMARKS "Build benchmarks tools" OFF)
option(WITH_EXAMPLES "Build examples" ON)
option(WITH_NACL "Build with libnacl (curve25519)" ON)
option(FUZZ_TESTING "Build with fuzzer for the server" OFF)
if (WITH_ZLIB)
    set(WITH_LIBZ ON)
else (WITH_ZLIB)
    set(WITH_LIBZ OFF)
endif (WITH_ZLIB)

if(WITH_BENCHMARKS)
  set(UNIT_TESTING ON)
endif(WITH_BENCHMARKS)

if (UNIT_TESTING)
  set(WITH_STATIC_LIB ON)
endif (UNIT_TESTING)

if (WITH_NACL)
  set(WITH_NACL ON)
endif (WITH_NACL)
